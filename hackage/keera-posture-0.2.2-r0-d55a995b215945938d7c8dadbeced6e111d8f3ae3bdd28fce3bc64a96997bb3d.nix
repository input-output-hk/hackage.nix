{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "keera-posture";
        version = "0.2.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://keera.co.uk/projects/keera-posture";
      url = "";
      synopsis = "Get notifications when your sitting posture is inappropriate.";
      description = "A program that notifies when you sit in a straining position.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "keera-posture" = {
          depends  = if system.isWindows
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.cv-combinators)
              (hsPkgs.cmdargs)
              (hsPkgs.HOpenCV)
              (hsPkgs.mtl)
              (hsPkgs.IfElse)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.glib)
              (hsPkgs.allocated-processor)
              (hsPkgs.time)
              (hsPkgs.SDL-mixer)
              (hsPkgs.SDL)
              (hsPkgs.gtk)
              (hsPkgs.gio)
              (hsPkgs.hgettext)
              (hsPkgs.setlocale)
              (hsPkgs.utf8-string)
              (hsPkgs.bytestring)
              (hsPkgs.network)
              (hsPkgs.HTTP)
              (hsPkgs.process)
              (hsPkgs.Win32)
              (hsPkgs.gtk-helpers)
              (hsPkgs.MissingK)
              (hsPkgs.keera-hails-mvc-solutions-gtk)
              (hsPkgs.keera-hails-mvc-model-protectedmodel)
              (hsPkgs.keera-hails-mvc-view-gtk)
              (hsPkgs.keera-hails-i18n)
              (hsPkgs.keera-hails-mvc-environment-gtk)
              (hsPkgs.keera-hails-reactive-gtk)
              (hsPkgs.keera-hails-mvc-controller)
              (hsPkgs.keera-hails-mvc-solutions-config)
              (hsPkgs.keera-hails-reactivevalues)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.cv-combinators)
              (hsPkgs.cmdargs)
              (hsPkgs.HOpenCV)
              (hsPkgs.mtl)
              (hsPkgs.IfElse)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.glib)
              (hsPkgs.allocated-processor)
              (hsPkgs.time)
              (hsPkgs.SDL-mixer)
              (hsPkgs.SDL)
              (hsPkgs.gtk)
              (hsPkgs.gio)
              (hsPkgs.hgettext)
              (hsPkgs.setlocale)
              (hsPkgs.utf8-string)
              (hsPkgs.bytestring)
              (hsPkgs.network)
              (hsPkgs.HTTP)
              (hsPkgs.process)
              (hsPkgs.gtk-helpers)
              (hsPkgs.MissingK)
              (hsPkgs.keera-hails-mvc-solutions-gtk)
              (hsPkgs.keera-hails-mvc-model-protectedmodel)
              (hsPkgs.keera-hails-mvc-view-gtk)
              (hsPkgs.keera-hails-i18n)
              (hsPkgs.keera-hails-mvc-environment-gtk)
              (hsPkgs.keera-hails-reactive-gtk)
              (hsPkgs.keera-hails-mvc-controller)
              (hsPkgs.keera-hails-mvc-solutions-config)
              (hsPkgs.keera-hails-reactivevalues)
            ];
          libs = pkgs.lib.optional (system.isWindows) (pkgs."SDL_mixer");
        };
      };
    };
  }