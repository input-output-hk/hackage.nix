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
        name = "ftp-client-conduit";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Matthew Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer file with FTP and FTPS with Conduit";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS. ftp-client-conduit uses conduit to stream files and data in constant space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ftp-client)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.connection)
        ];
      };
      tests = {
        "ftp-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ftp-clientconduit)
          ];
        };
      };
    };
  }