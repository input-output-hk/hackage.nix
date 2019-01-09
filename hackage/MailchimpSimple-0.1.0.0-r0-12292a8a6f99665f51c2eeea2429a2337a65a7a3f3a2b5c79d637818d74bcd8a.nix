{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "MailchimpSimple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan9131@gmail.com";
      author = "Dananji Liyanage";
      homepage = "https://github.com/Dananji/MailchimpSimple";
      url = "";
      synopsis = "A Haskell library to handle mailing lists in MailchimpSimple using its JSON API.";
      description = "Library to handle mailing lists in MailchimpSimple using its JSON API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.aeson-lens)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.directory)
          ];
        };
      };
    }