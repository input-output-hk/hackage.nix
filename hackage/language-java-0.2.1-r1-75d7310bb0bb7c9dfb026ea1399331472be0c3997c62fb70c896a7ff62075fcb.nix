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
      identifier = { name = "language-java"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Niklas Broberg";
      homepage = "http://github.com/vincenthz/language-java";
      url = "";
      synopsis = "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer";
      description = "Java source manipulation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."syb" or (errorHandler.buildDepError "syb"));
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          ];
        buildable = true;
        };
      };
    }