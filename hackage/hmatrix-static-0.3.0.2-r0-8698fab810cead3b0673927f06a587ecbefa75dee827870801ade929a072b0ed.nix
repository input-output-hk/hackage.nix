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
      specVersion = "1.6";
      identifier = { name = "hmatrix-static"; version = "0.3.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope";
      homepage = "http://code.haskell.org/hmatrix-static/";
      url = "";
      synopsis = "hmatrix with vector and matrix sizes encoded in types";
      description = "A thin, lightweight wrapper over hmatrix to support\nstatic checking of matrix and vector sizes (for instance,\naddition of different-sized vectors will be disallowed\nat compile-time).\n\nObjects whose sizes are not statically known are given\nthe special size 'Unknown', which allows a syntactically\ncheap way to step down to the statically unchecked system\nof hmatrix. This is cheap in comparison to representing\nunknown sizes with exisential types, which forces pervasive\ncontinuation passing style.\n\nWARNING: when using the QuasiQuoting in this package,\nbe aware of infix expressions. See the note in\n\"Data.Packed.Static.Syntax\" for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }