{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "marmalade-upload"; version = "0.5.1"; };
      license = "MIT";
      copyright = "(C) 2014 Sebastian Wiesner";
      maintainer = "lunaryorn@gmail.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/marmalade-upload";
      url = "";
      synopsis = "Upload packages to Marmalade";
      description = "Upload Emacs packages to the <http://marmalade-repo.org/ Marmalade> ELPA\narchive.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "marmalade-upload" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.failure)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.cmdargs)
            (hsPkgs.aeson)
            (hsPkgs.network)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.http-client-multipart)
            (hsPkgs.keyring)
            ];
          };
        };
      };
    }