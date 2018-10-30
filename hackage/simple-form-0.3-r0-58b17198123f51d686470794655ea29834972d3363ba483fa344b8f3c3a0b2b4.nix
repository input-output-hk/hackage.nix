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
      specVersion = "1.8";
      identifier = {
        name = "simple-form";
        version = "0.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/simple-form";
      url = "";
      synopsis = "Forms that configure themselves based on type";
      description = "Inspired by the RubyGem of the same name, this package allows you to\neasily build validating forms that infer defaults based on type.\n\nMost users will want to both render 'Html' and parse input, and so\nshould use the SimpleForm.Digestive.Combined and SimpleForm.Combined\nmodules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.email-validate)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.digestive-functors)
        ];
      };
    };
  }