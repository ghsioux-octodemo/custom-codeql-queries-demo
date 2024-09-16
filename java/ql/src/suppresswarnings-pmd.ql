/**
 * @name Detect @SuppressWarnings("PMD")
 * @description This query detects the usage of @SuppressWarnings("PMD") annotation.
 * @kind problem
 * @problem.severity warning
 * @id java/suppress-warnings-pmd
 */

 import java

 from Annotation ann, AnnotationType anntp
 where anntp = ann.getType() 
     and anntp.hasQualifiedName("java.lang", "SuppressWarnings")
     and ann.getValue("value").(CompileTimeConstantExpr).getStringValue().toUpperCase() = "PMD"
 select ann, "Avoid removing PMD warnings, or document clearly why they are not applicable."