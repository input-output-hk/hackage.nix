{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-bytestring = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-conduit";
        version = "1.0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Stream socket data using conduits.";
      description = "Stream socket data using conduits.";
      buildType = "Simple";
    };
    components = {
      "network-conduit" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
        ] ++ (if _flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.directory);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.base)
            (hsPkgs.network-conduit)
          ];
        };
      };
    };
  }