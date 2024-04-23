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
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "olwrapper"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "Haskell OpenLayers Wrapper\n\n* the library is also the tutorial\n\n* <http://permalink.obvsg.at/AC12315460 Bib>\n\n* <http://www.edelapps.com/olwrapper Test-Tutorial-Website>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."fay" or (errorHandler.buildDepError "fay"))
          (hsPkgs."fay-text" or (errorHandler.buildDepError "fay-text"))
          (hsPkgs."fay-jquery" or (errorHandler.buildDepError "fay-jquery"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          (hsPkgs."snaplet-fay" or (errorHandler.buildDepError "snaplet-fay"))
          (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
          (hsPkgs."snap-loader-dynamic" or (errorHandler.buildDepError "snap-loader-dynamic"))
        ];
        buildable = true;
      };
      exes = {
        "olwrapper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fay" or (errorHandler.buildDepError "fay"))
            (hsPkgs."fay-text" or (errorHandler.buildDepError "fay-text"))
            (hsPkgs."fay-jquery" or (errorHandler.buildDepError "fay-jquery"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."snaplet-fay" or (errorHandler.buildDepError "snaplet-fay"))
            (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
          ] ++ pkgs.lib.optional (flags.development) (hsPkgs."snap-loader-dynamic" or (errorHandler.buildDepError "snap-loader-dynamic"));
          buildable = true;
        };
      };
    };
  }