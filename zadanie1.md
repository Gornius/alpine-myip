# Zadanie 1
## [Link do repozytorium na DockerHub](https://hub.docker.com/repository/docker/c15u/alpine-myip)

## Polecenia do zbudowania
### Tworzenie obrazu
Tworzymy i używamy nowego buildx
```
docker buildx create --use --name mybuildx
```
Budujemy, tagujemy oraz pushujemy obraz na 3 platformy (należy użyć `docker login` w celu pusha)
```
docker buildx build -t c15u/alpine-myip --platform linux/arm/v7,linux/arm64,linux/amd64 --push .
```
### Uruchamianie kontenera i wystawienie usługi na porcie lokalnym 8081, usuwany po zatrzymaniu
```
docker run -it --rm -d -p 8081:8000 --name alpine-myip-c c15u/alpine-myip
```
### Sprawdzenie logów
```
docker logs alpine-myip-c
```
### Sprawdzenie ilości warstw
```
docker history c15u/alpine-myip
```
### Działanie w przeglądarce
**UWAGA! APLIKACJA NIE DZIAŁA POPRAWNIE ZE WZGLĘDU NA TO, ŻE JEST URUCHAMIANA Z MASZYNY LOKALNEJ, WIĘC ADRES IP UZYSKIWANY RÓWNIEŻ JEST LOKALNY!
MIRROR ZNAJDUJE SIĘ NA STRONIE [gornius.tk](http://gornius.tk)**
![image](https://user-images.githubusercontent.com/34241360/166251522-0d817e47-2fe3-4359-b9f4-415f8a54a9e6.png)
![image](https://user-images.githubusercontent.com/34241360/166252101-b9487791-ba89-4be3-8192-12f2f8f3954e.png)

# Zadanie 2
## [Link do utworzonego pakietu na repozytorium ghcr](https://github.com/users/Gornius/packages/container/package/alpine-myip)
