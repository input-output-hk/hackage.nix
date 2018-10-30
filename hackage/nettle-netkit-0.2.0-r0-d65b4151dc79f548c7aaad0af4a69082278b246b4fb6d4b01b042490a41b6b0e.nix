{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "nettle-netkit";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy";
      homepage = "";
      url = "";
      synopsis = "DSL for describing OpenFlow networks, and a compiler generating NetKit labs.";
      description = "DSL for describing OpenFlow networks, and a compiler generating NetKit labs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.nettle-openflow)
        ];
      };
    };
  }