#' CSS Minifier
#'
#'  This function uses csso. It performs three sort of transformations: cleaning (removing redundant),
#'  compression (replacement for shorter form) and restructuring (merge of declarations, rulesets and so on).
#'  As a result your CSS becomes much smaller.
#' @param css Character string containing CSS information
#' @seealso https://github.com/css/csso
#' @export
#' @examples
#' input = "* { color: green; }
#' ul, ol, li { color: blue; }
#' UL.foo, span.bar { color: red; }
#' "
#' minifyCSS(input)
minifyCSS = function(css) {
  ct$call("csso.minify", css)$css
}