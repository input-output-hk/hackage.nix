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
      specVersion = "1.10";
      identifier = { name = "text-format-heavy"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Full-weight string formatting library, analog of Python's string.format";
      description = "This package contains full-featured string formatting function, similar to\nPython's string.format. Features include:\n\n* Automatically numbered variable placeholders;\n\n* Positional variable placeholders;\n\n* Named variable placeholders;\n\n* Placeholders can be used in any order; one variable can be used several\ntimes or not used at all.\n\n* Specific format can be used for each variable substitution.\n\nThis package prefers functionality over \"light weight\" and (probably) performance.\nIt also exposes all required interfaces to extend and customize it.\n\nFor more details, please refer to <https://github.com/portnov/text-format-heavy/wiki Wiki>.\nSee also the @examples/@ directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }