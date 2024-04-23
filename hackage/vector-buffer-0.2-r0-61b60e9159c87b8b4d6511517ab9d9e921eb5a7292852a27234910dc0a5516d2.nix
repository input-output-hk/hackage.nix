{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "vector-buffer"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell.vivian.mcphail@gmail.com";
      author = "Vivian McPhail";
      homepage = "";
      url = "";
      synopsis = "A buffer compatible with Data.Vector.Storable";
      description = "A buffer type that can easily be converted to a Data.Vector.Storable vector\nfrom the vector package and compatible with hmatrix.\n\nElements are pushed into the buffer.  When the buffer is converted to a read-only\nvector, the last-pushed element occurs at the end.\n\nMonadic map functions also operate so that the last-pushed element is treated last.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }