{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yices-easy"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "http://www.ugcs.caltech.edu/~keegan/haskell/yices-easy/";
      url = "";
      synopsis = "Simple interface to the Yices SMT (SAT modulo theories) solver.";
      description = "This library provides a simple interface to Yices, an SMT solver available\nfrom <http://yices.csl.sri.com/>.\n\nIt uses the Yices C API, which you will need to have installed.  The API is\nnot installed on the Hackage server, so you may need to download this package\nin order to read its documentation.  Sorry.\n\nThe core functionality is provided by modules @Types@ and @Run@, and\nre-exported by @Yices.Easy@.  Module @Sugar@ provides optional syntactic\nsugar, and @Build@ provides optional monadic bookkeeping.\n\nThe library aims for simplicity, and not all features of Yices are supported.\nSuggestions and patches are welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bindings-yices" or ((hsPkgs.pkgs-errors).buildDepError "bindings-yices"))
          ];
        buildable = true;
        };
      };
    }