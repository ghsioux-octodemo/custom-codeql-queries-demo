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

Element elementNamedEnum() {
  result.(CompilationUnit).getPackage().getName().regexpMatch("(.*\\.|)toto(\\..*|)") or
  result.getName() = "toto"
}

select elementNamedEnum(),
  "Code using 'toto' as an identifier is a bad practice."
