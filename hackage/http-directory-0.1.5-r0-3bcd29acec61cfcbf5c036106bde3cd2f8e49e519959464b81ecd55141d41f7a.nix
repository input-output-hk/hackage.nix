{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "http-directory"; version = "0.1.5"; };
      license = "MIT";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/http-directory";
      url = "";
      synopsis = "http directory listing library";
      description = "Library for listing the files (href's) in an http directory.\nIt can also check the size, existence, modtime of files,\nand for url redirects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.html-conduit)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-date)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml-conduit)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
          (hsPkgs.semigroups)
          (hsPkgs.cryptonite)
          ];
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.http-directory) ];
          };
        };
      };
    }