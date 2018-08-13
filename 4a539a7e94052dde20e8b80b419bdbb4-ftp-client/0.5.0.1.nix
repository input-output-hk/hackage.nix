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
      specVersion = "1.10";
      identifier = {
        name = "ftp-client";
        version = "0.5.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Megan Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer files with FTP and FTPS";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.";
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
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "ftp-client-test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }