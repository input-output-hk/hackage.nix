{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "htsn-common";
        version = "0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Display/logging facilities used by both htsn and htsn-import.";
      description = "This library contains three modules,\n\n* Network.Services.TSN.Logging\n\n* Network.Services.TSN.Report\n\n* Network.Services.TSN.Terminal\n\nThey work together to provide \\\"reporting\\\" for the htsn and htsn-import\nexecutables which both display and log things in the same way.\n\nThe Network.Services.TSN.Logging module allows the application to\nlog to syslog, a file, or both. Four convenience functions are\nprovided to log messages at each priority: error, debug, info, and\nwarn.\n\nThe Network.Services.TSN.Terminal provides similar functions that\ninstead display messages on the console (terminal). The output is\ncolor-coded according to the severity of the message.\n\nThe Network.Services.TSN.Report modules contains convenience\nfunctions that both log and display informational message. This is\nwhat an (optionally interactive) application will usually want to\ndo.";
      buildType = "Simple";
    };
    components = {
      "htsn-common" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.hslogger)
          (hsPkgs.transformers)
        ];
      };
    };
  }