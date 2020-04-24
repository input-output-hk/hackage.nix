{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { new-base = false; };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "pcre-light"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007. Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/pcre-light";
      url = "";
      synopsis = "A lightweight binding to PCRE";
      description = "A lightweight binding to PCRE\n\nThe PCRE library is a set of functions that implement regular\nexpression pattern matching using the same syntax and semantics as Perl 5.\n\nTest coverage data for this library is available at:\n<http://code.haskell.org/~dons/tests/pcre-light/hpc_index.html>\n";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."pcre" or ((hsPkgs.pkgs-errors).sysDepError "pcre")) ];
        buildable = true;
        };
      };
    }