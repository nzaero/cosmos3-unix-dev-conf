#!/bin/sh
# $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"
alias nv='node -v' # nv-18='nvm use 18.4.0'
alias upAll='ncu -u'
alias n="pnpm" # "npm run"
alias ni='n install'
alias ppp='cat package.json | h scripts dependencies devDependencies name start build deploy init test'
# -0 OTHERS
alias sass='n smui-prepare'
# publish package
alias spack='npm run package && cd package && npm publish --access public'
# -0 CHECK (svelte only)
alias check="clear && n megacheck | h -ni \
'0 errors|0 error|0 warnings|problems|0 hints|formatting|format|building|build|bundle|preview|svelte-check|megacheck|check|lint|is defined but never used|Cannot find module|is being used as a type here|is of type|is not assignable to parameter of type|is not assignable to type|does not exist on type' \
'/Users/0-minuit-ax/0-dev/master/axelo4/|warning' \
'/Users/0-minuit-ax/0-dev/master/axelo4/node_modules|Error: |.svelte:'\
'routes|components|domain|stores|tecnology|themes'  \
'TPL/blog|creation|realisation|Creation|Realisation|creation-realisation|CreationRealisationApp' \
'/routes/|app/|(app)/' \
'cms/|/tests-unit/scrapper/|has no effect on the type of this expression' \
'/shared/|/Users/0-minuit-ax/0-dev/master/axelo4/' \
'stdoc/|/0-config/|/debugUi/' \
'\.svelte|\.ts|/scrapper/src/' \
'\.json|\.js|any|error|Cannot find module' \
'\.cjs | \.config' \
'svelte-check --tsconfig|\.md|\.postcss|\.scss|\.css|\.html' \
"
# -0 LINT
BOUCHON__LINT='\
"unexpected any warning" \
"/Users/0-minuit-ax/0-dev/master/axelo4|no-non-null-assertion" \
"Unexpected any|error" \
"warning|singleton|no-unused-vars" \
"====================================" \
"0 errors|0 warnings|0 hints" \
"checking" \
"\.ts|\.svelte" \
"\.cjs" \
'
alias lint="clear && n lint | h -ni $BOUCHON__LINT"
# -0 FORMAT
alias format='clear && n format \
| h -ni ".test" "\.cjs" "\.json" "\.svelte"  "\.html" "\.css"  "\.json" "\.js" "\.md" "\.config"  "\.ts" "\.scss"  \
| h -ni "index" "changelog"  "readme" "components" "package" "global" "\.cjs" "\.eslintrc"  '
# -0 BUILD
alias nb='n build'
# -0 DEV
alias nd='n dev'
alias ndf="n dev-force- ignore-cache-re-bundle"
# alias nrs="pnpm run dev -- --open"
alias ndd='nrs | h   "\.svelte" "~/0HOME/GARAGE/INTRALINK/src/|/src/routes/|/src/lib/|/src/stores/" "\[0\]" "\[1\]" ".*:.*:.*" "A11y"'
# -0 DEBUG
alias ndeb="n debug"
# -0 EMU
alias ne="n emu"
alias ne--kill='n emu--kill'
# -0 DEPLOY
alias ndep='n deploy'
# -0 TEST
alias nc="n test-vitest--coverage"
alias ntui="n test-vitest--ui"
alias nt="n test-vitest"
alias ntt='nt | h -ni "test.ts:" "\-\-" ">>>" "tests/scrapper/" "apiChat" "apiMine" "apiShared" " # "'
alias ns="n serve"
# playwright
alias np="n play"
alias np--deb="n play-debug"

# -0
# -0
# -0
