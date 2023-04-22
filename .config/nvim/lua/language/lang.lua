-- Collection of all supported languages
local lang = { 
	languages = { 'ada', 'agda', 'arduino', 'astro', 'bash', 'bass', 'beancount', 'bibtex', 'bicep', 'blueprint', 'c', 'c_sharp', 'capnp', 'chatito', 'clojure', 'cmake', 'comment', 'commonlisp', 'cooklang', 'cpon', 'cpp', 'css', 'cuda', 'cue', 'dart', 'devicetree', 'dhall', 'diff', 'dockerfile', 'dot', 'ebnf', 'eex', 'elixir', 'elm', 'elsa', 'elvish', 'embedded_template', 'erlang', 'fennel', 'firrtl', 'fish', 'foam', 'fortran', 'fsh', 'func', 'fusion', 'gdscript', 'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'gitignore', 'gleam', 'glimmer', 'glsl', 'go', 'gomod', 'gosum', 'graphql', 'hare', 'hcl', 'heex', 'hjson', 'hlsl', 'hocon', 'html', 'htmldjango', 'http', 'ini', 'java', 'javascript', 'jq', 'jsdoc', 'json', 'json5', 'jsonc', 'jsonnet', 'julia', 'kdl', 'kotlin', 'lalrpop', 'latex', 'ledger', 'llvm', 'lua', 'luadoc', 'luap', 'm68k', 'make', 'markdown', 'matlab', 'menhir', 'meson', 'mlir', 'ninja', 'nix', 'norg', 'ocaml', 'ocaml_interface', 'ocamllex', 'pascal', 'passwd', 'perl', 'php', 'phpdoc', 'pioasm', 'po', 'pony', 'prisma', 'proto', 'prql', 'pug', 'python', 'ql', 'qmldir', 'qmljs', 'query', 'r', 'racket', 'rasi', 'regex', 'rego', 'rnoweb', 'ron', 'rst', 'ruby', 'rust', 'scala', 'scheme', 'scss', 'slint', 'smali', 'smithy', 'solidity', 'sparql', 'sql', 'squirrel', 'starlark', 'supercollider', 'surface', 'svelte', 'swift', 'sxhkdrc', 't32', 'tablegen', 'teal', 'terraform', 'thrift', 'tiger', 'tlaplus', 'todotxt', 'toml', 'tsx', 'turtle', 'twig', 'typescript', 'ungrammar', 'uxntal', 'v', 'vala', 'verilog', 'vhs', 'vim', 'vimdoc', 'vue', 'wgsl', 'wgsl_bevy', 'yaml', 'yang', 'yuck', 'zig' },
	experimentallang = { 'ada', 'agda', 'arduino', 'astro', 'awk', 'bash', 'bass', 'beancount', 'bibtex', 'bicep', 'd', 'hack', 'haskell', 'mermaid', 'nickel', 'org' },	
}

alllang = function()
	local languages = {table.unpack(lang), table.unpack(experimentallang)}
	return languages
end

return lang, alllang
