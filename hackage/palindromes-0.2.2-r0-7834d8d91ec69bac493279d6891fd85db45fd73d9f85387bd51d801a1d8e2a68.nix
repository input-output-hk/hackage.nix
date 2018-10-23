{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "palindromes";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 - 2011 Johan Jeuring";
      maintainer = "johan@jeuring.net";
      author = "Johan Jeuring";
      homepage = "http://www.jeuring.net/Palindromes";
      url = "";
      synopsis = "Finding palindromes in strings";
      description = "palindromes is an executable and a library which takes a file name, and\nreturns information about palindromes in the file.";
      buildType = "Simple";
    };
    components = {
      "palindromes" = {};
      exes = {
        "palindromes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
          ];
        };
      };
    };
  }