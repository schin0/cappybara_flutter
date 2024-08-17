
# 🦫 Cappybara

**Cappybara** é um aplicativo 📱 de mobilidade para eventos, projetado para ajudar os usuários a encontrar, participar e socializar em eventos de maneira mais fácil. Desenvolvido em **Flutter**, o aplicativo proporciona uma experiência fluida em dispositivos móveis.

## 🗂️ Estrutura do Projeto

A estrutura do projeto foi organizada para facilitar o desenvolvimento e a manutenção do código. Abaixo está uma descrição das principais pastas e arquivos:

```lib/
├── models/
│   ├── city_model.dart
│   ├── evento_card_model.dart
│   └── sugestao_card_model.dart
├── providers/
│   └── home_provider.dart
├── routes/
│   └── app_routes.dart
├── screens/
│   ├── busca_screen.dart
│   ├── evento_screen.dart
│   ├── home_screen.dart
│   └── map_screen.dart
├── widgets/
│   ├── evento_interesse_widget.dart
│   ├── evento_resumo_widget.dart
│   └── menu_navegacao_widget.dart
└── main.dart
``` 

### 📁 Descrição das Pastas

-   **models/**: Contém as classes de modelo usadas para representar os dados do aplicativo, como `CityModel`, `EventoCardModel`, e `SugestaoCardModel`.
    
-   **providers/**: Contém os provedores de estado, como o `HomeProvider`, que gerenciam a lógica de negócios e o estado do aplicativo.
    
-   **routes/**: Contém as definições de rotas de navegação do aplicativo, encapsuladas no arquivo `app_routes.dart`.
    
-   **screens/**: Contém as telas principais do aplicativo, como:
    
    -   🔍 `busca_screen.dart`: Tela de busca por eventos.
    -   🎟️ `evento_screen.dart`: Tela detalhada de um evento específico.
    -   🏠 `home_screen.dart`: Tela principal de entrada do aplicativo.
    -   🗺️ `map_screen.dart`: Mapa para visualização da localização de eventos.
-   **widgets/**: Contém os widgets customizados que são reutilizados em diferentes partes do aplicativo, como:
    
    -   🌟 `evento_interesse_widget.dart`: Widget para mostrar eventos de interesse.
    -   📝 `evento_resumo_widget.dart`: Widget que resume as informações do evento.
    -   📂 `menu_navegacao_widget.dart`: Widget de menu de navegação.
-   **main.dart**: O ponto de entrada do aplicativo, onde a aplicação Flutter é iniciada.
    

## 📚 Bibliotecas Utilizadas

O projeto **Cappybara** utiliza as seguintes bibliotecas para garantir um desenvolvimento robusto e eficiente:

-   **cached_network_image**: Para carregamento e cache de imagens da rede.
-   **flutter_svg**: Para renderizar arquivos SVG no Flutter.
-   **provider**: Para gerenciamento de estado reativo.
-   **flutter_svg_provider**: Para usar SVG como provedor de imagem.
-   **google_maps_flutter**: Para integração com o Google Maps.
-   **mobx** & **flutter_mobx**: Para gerenciamento de estado reativo baseado em observadores.

## 🚀 Como Rodar

1.  Clone o repositório:

`git clone https://github.com/schin0/cappybara_flutter.git` 

2.  Instale as dependências:

`flutter pub get` 

3.  Execute o aplicativo:

`flutter run`

## 📞 Participantes
- [Alex Coelho de Oliveira](https://www.linkedin.com/in/alex-coelho-de-oliveira/)
- [Gabriel Hernandes Schincariol](https://www.linkedin.com/in/gabrielschincariol/)
- [Guilherme Radan Pereira Santos](https://www.linkedin.com/in/guilherme-radan-pereira-santos-0bb65b194/)
- [Lucas da Silva de Almeida Costa](https://www.linkedin.com/in/lucas-costa-7a3b81201/)
