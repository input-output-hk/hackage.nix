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
    flags = { base4 = true; newth = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Bravo"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010, Matthias Reisner";
      maintainer = "Matthias Reisner <matthias.reisner@googlemail.com>";
      author = "Matthias Reisner";
      homepage = "http://www.haskell.org/haskellwiki/Bravo";
      url = "";
      synopsis = "Static text template generation library";
      description = "Bravo is a text template library that provides parsing and generation of templates\nat compile time. Templates can be read from strings or files and for each\na new record data type is created, allowing convenient access to all template\nvariables in a type-safe manner. Since all templates are processed at compile time,\nno extra file access or error handling at runtime is necessary.\n\nAdditional features include the definition of multiple templates per file,\nconditional template evaluation, embedding of Haskell expressions and customized\ndata type generation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ])) ++ [
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }