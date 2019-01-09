{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-gapi"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Jonathan Skårstedt";
      maintainer = "jonathan.skarstedt@gmail.com";
      author = "Jonathan Skårstedt";
      homepage = "";
      url = "";
      synopsis = "Google API bindings for the Haste compiler";
      description = "This is a library to make use of the Google API Client\nLibrary for JavasScript in a Haskell environment!\nThe library works by wrapping login and giving you a\nfancy type to perform your requests in. This will ease\nchained requests that would give large amounts of clutter\nin JavaScript, while giving you a better ability to\nhandle errors.\nYour HTML doesn't even need to load the GAPI library\nitself, Haste-GAPI handles that for you!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          ] ++ (if flags.haste-inst
          then [ (hsPkgs.haste-lib) ]
          else [ (hsPkgs.haste-compiler) ]);
        };
      };
    }