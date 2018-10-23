{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring-in-base = true;
    };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "pcap";
        version = "0.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan, Nick Burlett, Dominic Steinitz, Gregory Wright (original author)";
      homepage = "";
      url = "";
      synopsis = "A system-independent interface for user-level packet capture";
      description = "A system-independent interface for user-level packet capture";
      buildType = "Configure";
    };
    components = {
      "pcap" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.network)
          (hsPkgs.time)
        ] ++ (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]);
      };
    };
  }