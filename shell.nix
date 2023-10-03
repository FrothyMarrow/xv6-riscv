let
  crossPkgs = import <nixpkgs> {
    crossSystem = {system = "riscv64-none-elf";};
  };
  pkgs = import <nixpkgs> {
    system = "aarch64-darwin";
  };
in
  crossPkgs.mkShell {
    packages = [
      pkgs.qemu
    ];
  }
