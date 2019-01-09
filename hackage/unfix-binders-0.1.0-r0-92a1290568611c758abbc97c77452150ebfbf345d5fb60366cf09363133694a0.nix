{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unfix-binders"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Arnaud Spiwack";
      maintainer = "arnaud@spiwack.net";
      author = "Arnaud Spiwack";
      homepage = "https://github.com/aspiwack/peppermint-prover";
      url = "";
      synopsis = "Unfixing and recursion schemes for data types with binders";
      description = "Use fixed-point of endofunctors of endofunctors (that is initial algebras in the category of endofunctors) to define recursion schemes for data types with binders";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }