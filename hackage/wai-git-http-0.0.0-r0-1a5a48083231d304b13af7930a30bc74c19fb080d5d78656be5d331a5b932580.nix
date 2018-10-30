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
      specVersion = "1.10";
      identifier = {
        name = "wai-git-http";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Sydney Kerckhove <syd.kerckhove@gmail.com>";
      author = "Tom Sydney Kerckhove <syd.kerckhove@gmail.com>";
      homepage = "https://github.com/NorfairKing/wai-git-http";
      url = "";
      synopsis = "Git http-backend CGI App of WAI";
      description = "Git http-backend CGI App of WAI";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.sockaddr)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-conduit)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.wai)
            (hsPkgs.wai-git-http)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }