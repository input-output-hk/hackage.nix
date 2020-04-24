{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "pipe-enumerator"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/pipe-enumerator";
      url = "";
      synopsis = "A bidirectional bridge between pipes and iteratees";
      description = "This library defines a set of functions that convert between\nthe \"Pipes\" and \"Data.Enumerator\" paradigms. The conversion\nis bidirectional: an appropriately-typed pipe can be converted\ninto an 'Data.Enumerator.Iteratee' and back into a pipe.\nIn addition, a pipe can be fed into an iteratee\n(or, more specifically, 'Data.Enumerator.Step'),\nresulting in an 'Data.Enumerator.Enumerator'.\nThe library has been designed specifically for use with Snap,\nbut I'm sure that many other interesting uses of it exist.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }