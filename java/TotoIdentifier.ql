/**
 * @name String 'toto' used as identifier
 * @description Using 'toto' as an identifier is a bad practice.
 * @kind problem
 * @problem.severity warning
 * @precision low
 * @id java/toto-identifier
 * @tags portability
 *       readability
 *       naming
 */

import java

Element elementNamedToto() {
  result.(CompilationUnit).getPackage().getName().regexpMatch("(.*\\.|)toto(\\..*|)") or
  result.getName() = "toto"
}

select elementNamedToto(),
  "Code using 'toto' as an identifier is a bad practice."
