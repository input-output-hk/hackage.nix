{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "fedora-img-dl"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Fedora image download tool";
      description = "Tool to download Fedora iso and image files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fedora-img-dl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.html-conduit)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.hxt)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.xdg-userdirs)
            (hsPkgs.xml-conduit)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }