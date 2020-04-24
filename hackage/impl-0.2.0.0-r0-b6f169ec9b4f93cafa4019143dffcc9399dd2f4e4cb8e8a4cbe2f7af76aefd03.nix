{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dumpexample = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "impl"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Sodality";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/exordium/impl#readme";
      url = "";
      synopsis = "Framework for defaulting superclasses";
      description = "This small but extensible framework facilitates defining complex defaulting rules that are not handled by DefaultSignatures, and reducing the overhead of giving instances to new datatypes by generating superclasses. One reason we might want this is when a superclass wants to be given a default by two different subclasses (ex: Bifunctor and Profunctor both could generate Functor instances). See the example internal library for how to implement instances of Impl. Impl is most valuable when instantiating deep (or even undecidably recursive) typeclass hierarchies for multiple new datatypes, which is most common in client code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."named" or ((hsPkgs.pkgs-errors).buildDepError "named"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      sublibs = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."impl" or ((hsPkgs.pkgs-errors).buildDepError "impl"))
            ];
          buildable = true;
          };
        };
      };
    }