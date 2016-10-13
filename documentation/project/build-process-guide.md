# Build-Process Guide

## Allgemein

Die Build-Erzeugnisse werden in der Konfiguration **Release** erzeugt.

## Travis CI

Die Konfigurationsdatei ```.travis.yml``` wurde im Root der Quellcodeverwaltung abgelegt, damit Travis CI die Datei über GitHub automatisch auslesen und Builds erzeugen kann.

Builds werden nur mit Travis CI erzeugt, wenn:

* ist **master**- oder **develop**-Branch
* ein **Pull Request** angefordert wurde

Unterstützt wird derzeit nur Linux.

### Skripte

Im Skript ```.travis.yml``` wird zum Build eine ```build.sh``` aufgerufen, die widerum ```build.sh``` jeweils im Ordner ```src/WebApi``` und ```src/WebClient``` aufruft.

## AppVeyor

Die Konfigurationsdatei ```appveyor.yml``` wurde im Root der Quellcodeverwaltung abgelegt, damit AppVeyor die Datei über GitHub automatisch auslesen und Builds erzeugen kann.

Builds werden nur mit AppVeyor erzeugt, wenn:

* ist **master**- oder **develop**-Branch
* ein **Pull Request** angefordert wurde

Unterstützt wird derzeit nur Windows.

### Skripte

Es werden die gleichen Skripte ausgeführt, die im Abschnitt [Windows (Powershell)](#windows-powershell) beschrieben sind.

## Windows (PowerShell)

Für den Build in Windows, wird die **PowerShell** benutzt.

Ausgeführt werden muss die Datei ```build.ps1``` im Root der Quellcodeverwaltung. Bei der Ausführung wird im Root ein Ordner (Standard: *buildOutput*) erzeugt. Existiert dieser Ordner nicht, wird dieser automatisch angelegt. Wenn der Ordner existiert, werden alle Dateien und Ordner gelöscht.

## Übersicht

|                    | Travis CI | AppVeyor | Windows (PowerShell) |
| -----------: | :-------: | :------: | :--------------------: |
| WebApi       | &#x25CF; | &#x25CF; | &#x25CF; |
| WebClient   | &#x25CF; | &#x25CF; | &#x25CF; |