{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "beautifHOL"; version = "0.10"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lee Pike <leepike@gmail.com>";
      author = "Lee Pike <leepike@gmail.com>";
      homepage = "http://www.cs.indiana.edu/~lepike/pub_pages/holpp.html";
      url = "";
      synopsis = "A pretty-printer for higher-order logic";
      description = "This is a pretty-printer for higher-order logic (HOL).  It reads in a formula\nand outputs it to standard out.  A paper describes its design and motivation\nat the project website.  The approach expands upon Leslie Lamport's paper, \\\"How\nto Write a Long Formula,\\\" available at\n<http://research.microsoft.com/en-us/um/people/lamport/pubs/pubs.html#lamport-howtowrite>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "beautifHOL" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }