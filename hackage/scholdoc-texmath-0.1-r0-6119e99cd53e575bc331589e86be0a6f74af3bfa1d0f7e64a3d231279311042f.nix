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
    flags = { executable = false; network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scholdoc-texmath"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://github.com/timtylin/scholdoc-texmath";
      url = "";
      synopsis = "Scholdoc fork of texmath";
      description = "This package is a fork of @texmath@, intended to support\nthe development of Scholdoc. It is currently just a\ntrivial fork just so it can compile against\n@scholdoc-types@ without polluting the @texmath@ package\nnamespace.\n\nThis package is currently up to date with @taxmath@\nversion 0.8\n\nThe @texmath@ library provides functions to read and write\nTeX math, presentation MathML, and OMML (Office Math\nMarkup Language, used in Microsoft Office). For\ndescriptions of the original @texmath@ package, please\nvisit <http://hackage.haskell.org/package/texmath>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scholdoc-types" or (errorHandler.buildDepError "scholdoc-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
      exes = {
        "texmath" = {
          depends = pkgs.lib.optionals (flags.executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scholdoc-texmath" or (errorHandler.buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."scholdoc-types" or (errorHandler.buildDepError "scholdoc-types"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
          buildable = if flags.executable then true else false;
        };
      };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."scholdoc-texmath" or (errorHandler.buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
    };
  }