{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old_base = false; };
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "pcre-light";
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2010. Don Stewart <dons@galois.com>";
      maintainer = "Daniel Díaz <dhelta.diaz@gmail.com>";
      author = "Don Stewart";
      homepage = "https://github.com/Daniel-Diaz/pcre-light";
      url = "";
      synopsis = "A small, efficient and portable regex library for Perl 5 compatible regular expressions";
      description = "A small, efficient and portable regex library for Perl 5 compatible regular expressions\n\nThe PCRE library is a set of functions that implement regular\nexpression pattern matching using the same syntax and semantics as Perl 5.\n\nIf installation fails reporting that you are missing the prce C library, try installing\nthe @libpcre3-dev@ package (linux).\n";
      buildType = "Configure";
    };
    components = {
      "pcre-light" = {
        depends  = if flags.old_base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        libs = [ (pkgs."pcre") ];
      };
    };
  }