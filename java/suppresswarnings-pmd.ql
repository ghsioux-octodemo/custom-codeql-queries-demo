import java

/**
 * @name Detect @SuppressWarnings("PMD")
 * @description This query detects the usage of @SuppressWarnings("PMD") annotation.
 * @kind problem
 * @problem.severity warning
 * @id java/suppress-warnings-pmd
 */

class SuppressWarningsPMD extends Annotation {
  SuppressWarningsPMD() {
    this.getType().hasQualifiedName("java.lang", "SuppressWarnings") and
    this.getValue().toString().matches("\"PMD\"")
  }
}

from SuppressWarningsPMD annotation
select annotation, "Usage of @SuppressWarnings(\"PMD\") detected."
