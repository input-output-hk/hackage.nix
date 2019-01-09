{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { allow-bsd = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-sendfile"; version = "0.2.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Cross platform library for the sendfile system call";
      description = "Cross platform library for the sendfile system call.\nThis library tries to call minimum system calls which\nare the bottleneck of web servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          ] ++ (if system.isFreebsd && flags.allow-bsd
          then [ (hsPkgs.unix) ]
          else if system.isOsx
            then [ (hsPkgs.unix) ]
            else if system.isLinux
              then [ (hsPkgs.unix) ]
              else [
                (hsPkgs.conduit)
                (hsPkgs.conduit-extra)
                (hsPkgs.transformers)
                ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.network)
            (hsPkgs.network-conduit)
            (hsPkgs.process)
            (hsPkgs.simple-sendfile)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }