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
      identifier = { name = "shqq"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Embed shell commands with interpolated Haskell variables, and capture output";
      description = "This library provides a quasiquoter for executing shell commands, somewhat\nsimilar to Perl's backtick operator.  Shell commands are IO actions, and\nthey capture the command's standard output as a @String@ result.\n\nYou can use Haskell variables in a shell command.  A string representation\nof the contents will be interpolated.  The shell will see each interpolated\nvariable as a single token without interpreting special characters, unless\nyou choose otherwise.\n\nNote: The shell escaping is not correct for the Windows shell.  This library\nshould fail to build on Windows, as well.\n\nExamples of using this library are included in @examples/@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }