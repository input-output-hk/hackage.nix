{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prints";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Evan Turner";
      maintainer = "ev@evturn.com";
      author = "Evan Turner";
      homepage = "https://github.com/evturn/prints";
      url = "https://github.com/evturn/prints.git";
      synopsis = "The Artist Formerly Known as Prints";
      description = "In 1993, in rebellion against Warner Bros., which refused\nto release Prince's enormous backlog of music at a steady\npace, he changed his name to an unpronounceable symbol.";
      buildType = "Simple";
    };
    components = {
      "prints" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hscolour)
          (hsPkgs.pretty-show)
          (hsPkgs.pretty-simple)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }