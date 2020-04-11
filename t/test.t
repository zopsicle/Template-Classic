use Test;
use Template::Classic;

my $src := ｢<ul><% for @xs -> $x { %><li><%= $x %></li><% } %></ul>｣;
my &t := *.eager.join ∘ template(:(@xs), $src);

cmp-ok t(qw｢         ｣), ‘eq’, ｢<ul></ul>｣;
cmp-ok t(qw｢foo bar  ｣), ‘eq’, ｢<ul><li>foo</li><li>bar</li></ul>｣;
cmp-ok t(qw｢foo <>&"'｣), ‘eq’, ｢<ul><li>foo</li><li>&lt;&gt;&amp;&quot;&#39;</li></ul>｣;

done-testing;
