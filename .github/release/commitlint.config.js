module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // Project specific rules
    'scope-enum': [2, 'always', ['deps']],

    // Compliant with Angular conventions (get rid of "style" type but tolerate "chore" one)
    'type-enum': [2, 'always', ['feat', 'fix', 'perf', 'revert', 'refactor', 'build', 'test', 'ci', 'docs', 'chore']],

    // Adjust some rules predefined by @commitlint/config-conventional
    'body-max-line-length': [0, 'always', 'Infinity'],
    'footer-max-line-length': [0, 'always', 'Infinity']
  }
}
