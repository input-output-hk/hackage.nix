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
      specVersion = "1.6";
      identifier = {
        name = "snaplet-tasks";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ciemniewski.kamil@gmail.com";
      author = "Kamil Ciemniewski";
      homepage = "";
      url = "";
      synopsis = "Snaplet for Snap Framework enabling developers to administrative tasks akin to Rake tasks from Ruby On Rails framework.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snaplet-tasks" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.MissingH)
          (hsPkgs.curl)
          (hsPkgs.data-hash)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
        ];
      };
    };
  }