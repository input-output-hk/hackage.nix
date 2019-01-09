{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "proplang"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell, Asumu Takikawa";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/proplang/";
      url = "";
      synopsis = "A library for functional GUI development";
      description = "PropLang provides a combinator library for event-driven\nfunctional GUI programming. GUI elements can be tied together\nin a declarative style to make the resulting code clearer.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.gtk) (hsPkgs.glib) (hsPkgs.glade) ];
        };
      };
    }