{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "clustertool";
  targetPkgs = pkgs: (with pkgs; [
    kubectl
    kubernetes-helm
    fluxcd
  ]);
  runScript = "bash";
}).env
