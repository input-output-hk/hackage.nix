{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "palindromes";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 - 2009 Johan Jeuring";
      maintainer = "johan@jeuring.net";
      author = "Johan Jeuring";
      homepage = "http://www.jeuring.net/Palindromes";
      url = "";
      synopsis = "Finding palindromes in strings";
      description = "FindingPalindromes is an executable and a library which takes a file name, and\nreturns information about palindromes in the file.";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "palindromes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
          ];
        };
      };
    };
  }