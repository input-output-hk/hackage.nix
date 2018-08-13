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
      specVersion = "1.2";
      identifier = {
        name = "happstack-dlg";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith";
      homepage = "http://patch-tag.com/r/cdsmith/happstack-dlg";
      url = "";
      synopsis = "Cross-request user interactions for Happstack";
      description = "A mechanism for user interactions that extend through\nmultiple request/response cycles on the Happstack\nserver, inspired by Chris Eidhof.";
      buildType = "Simple";
    };
    components = {
      "happstack-dlg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.happstack-server)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }