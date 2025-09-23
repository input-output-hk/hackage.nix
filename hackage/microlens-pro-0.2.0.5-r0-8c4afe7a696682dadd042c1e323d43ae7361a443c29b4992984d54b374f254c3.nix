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
      identifier = { name = "microlens-pro"; version = "0.2.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Steven Fontanella <steven.fontanella@gmail.com>";
      author = "Edward Kmett, Artyom Kazak, crumbtoo <lomiskiam@gmail.com>";
      homepage = "http://github.com/stevenfontanella/microlens";
      url = "";
      synopsis = "Prisms and isomorphisms for microlens";
      description = "This package provides lens-compatible 'Prism' and 'Iso'. Consequently, it\ndepends on the rather heavy @profunctors@.\n\nThank you to the <https://hackage.haskell.org/package/lens lens> contributors\nfor the original code and some docs,\nEmily Pillmore (<https://cohomolo.gy link>) and\nMario Rom&#225;n (<https://mroman42.github.io/cosmoi link>) for\n<https://golem.ph.utexas.edu/category/2020/01/profunctor_optics_the_categori.html this post>\nwhich inspired documentation, and Wikibooks contributors for\n<https://en.wikibooks.org/wiki/Haskell/Lenses_and_functional_references#Isos this article>.\n\nThis package is a part of the\n<https://hackage.haskell.org/package/microlens microlens> family; see the\nreadme <https://github.com/stevenfontanella/microlens on Github>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."microlens-contra" or (errorHandler.buildDepError "microlens-contra"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "8.6.5") (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"));
        buildable = true;
      };
    };
  }