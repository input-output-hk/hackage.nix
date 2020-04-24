{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "grapefruit-records"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@informatik.tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://haskell.org/haskellwiki/Grapefruit";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-records/0.0.0.0/grapefruit-records-0.0.0.0.tar.gz";
      synopsis = "A record system";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package provides a record system for use with FRP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."grapefruit-frp" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-frp"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."type-equality-check" or ((hsPkgs.pkgs-errors).buildDepError "type-equality-check"))
          ];
        buildable = true;
        };
      };
    }