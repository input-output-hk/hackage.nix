{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Dao"; version = "0.0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2008-2009, Ramin Honary";
      maintainer = "ramin.honary@gmail.com";
      author = "Ramin Honary <ramin.honary@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "An interactive knowledge base, natural language interpreter.";
      description = "This program is still largely incomplete.\nDao is an artificial intelligence program which allows users to construct\na knowledge base for intepreting natural language input. The idea is to\nlet users interactively build their own knowledge base by adding rules at\nruntime.  The state of the knowledge base can be updated by enacting it's\nown production rules, or by a user entering commands to alter the state\ndirectly. Regular-expression-like patterns are associated with rules so\nnatural language input can be used to invoke rules at any time.";
      buildType = "Simple";
      };
    components = { exes = { "dao" = { depends = [ (hsPkgs.base) ]; }; }; };
    }