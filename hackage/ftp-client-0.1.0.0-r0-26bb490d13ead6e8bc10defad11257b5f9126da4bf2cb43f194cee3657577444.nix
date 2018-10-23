{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ftp-client";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Matthew Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer files with FTP and FTPS";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ftp-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.attoparsec)
          (hsPkgs.connection)
        ];
      };
      tests = {
        "ftp-client-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ftp-client)
          ];
        };
      };
    };
  }