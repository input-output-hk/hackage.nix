{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "operational";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Heinrich Apfelmus 2010";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://projects.haskell.org/operational/";
      url = "";
      synopsis = "Implement monads by specifying operational semantics.";
      description = "Tiny library for implementing monads by specifying the primitive instructions\nand their operational semantics. The monad laws will hold automatically.\nCan also be used to define monad transformers,\nthe lifting laws are, again, automatic.\nAccompanies the article: \\\"The Operational Monad Tutorial\\\",\npublished in Issue 15 of The Monad.Reader <http://themonadreader.wordpress.com/2010/01/26/issue-15/>.\nRelated packages: MonadPrompt <http://hackage.haskell.org/package/MonadPrompt>.";
      buildType = "Simple";
    };
    components = {
      "operational" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }