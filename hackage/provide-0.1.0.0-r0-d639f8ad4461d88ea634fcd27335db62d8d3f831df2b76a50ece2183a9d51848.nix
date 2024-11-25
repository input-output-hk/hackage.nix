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
    flags = { strict = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "provide"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Lightweight dependency injection / namespaced+typed implicit-ish arguments";
      description = "In many applications, there are arguments that need to be passed deeply into call hierarchies, which can be annoying.  Implicit arguments are one potential solution to this, but they have a few issues.  Firstly, their names are based on strings, which can be noncomposable e.g. in the case that multiple libraries choose the same name.  Secondly, the type of an implicit argument can be freely chosen wherever it is used, which is more flexibility than most libraries want.  Thirdly, the semantics of implicit variables is somewhat strange with respect to let bindings, etc.\nThis library instead supports associating an unlimited number of values with a context type.  Although this context type does need to be passed down somehow into the child functions, it's only one argument, not many, and it can be passed as a type or as a Proxy value.  The keys of the context are types, which libraries can provide to designate the context arguments they want.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."provide" or (errorHandler.buildDepError "provide"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
          buildable = true;
        };
      };
    };
  }