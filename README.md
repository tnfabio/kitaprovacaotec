# Kit Aprovação — Técnico em Enfermagem (página de vendas)

Página de vendas do kit para o concurso da SES-TO. É um arquivo só, `index.html`, e o pagamento acontece no checkout da Kiwify.

## Como publicar uma mudança

1. Edite o `index.html` e salve.
2. Abra o `index.html` no navegador para conferir.
3. Dê dois cliques em `publicar.bat`, descreva a mudança e aperte Enter.

O `publicar.bat` salva a versão no histórico e envia para o GitHub. Com o GitHub Pages ativado, o site atualiza em 1 a 2 minutos.

## O que mudar e onde

Os ajustes mais comuns ficam no fim do `index.html`, logo depois de `<script>`:

| Campo | Para que serve |
|---|---|
| `CHECKOUT_URL` | Link do checkout da Kiwify. Vai para todos os botões de compra. |
| `PARCELAMENTO` | Texto do parcelamento, por exemplo `"em até 6x"` ou `"6x de R$ 5,07"`. |
| `PRECO_CHEIO` | Preço normal, mostrado riscado ("De R$ 97,00 por apenas"). Vazio tira o preço riscado. |
| `FIM_DA_OFERTA` | Data em que a oferta acaba. Só preencha se o preço for mesmo voltar ao normal na Kiwify. |

Outros ajustes:

- **Preço atual:** use Localizar e substituir (Ctrl+H) para trocar `27,00` em todo o arquivo. Mude também na Kiwify.
- **Relógio do topo:** procure `var LIMITE = 17 * 60` e troque o `17` pelos minutos desejados.
- **Data da prova:** procure `new Date(2026, 10, 1)`. O mês começa em zero, então `10` é novembro.
- **Imagem do kit:** substitua `mockup-kit-capas.jpg` por outra com o mesmo nome (1600 × 1000 px).
- **Depoimentos:** há um bloco desligado, marcado com `DEPOIMENTOS`. Só ligue com depoimentos reais e autorizados.

## Voltar a uma versão anterior

Cada publicação fica guardada. Para ver a lista, abra o terminal nesta pasta e rode:

```
git log --oneline
```

Para trazer de volta o `index.html` de uma versão, use o código que aparece na lista (ou uma etiqueta, como `v1.0`) e publique de novo:

```
git checkout v1.0 -- index.html
```

## Arquivos

- `index.html`: a página inteira (texto, visual e comportamento).
- `mockup-kit-capas.jpg`: imagem do kit no topo da página.
- `publicar.bat`: publica as mudanças.
- `mockup-kit.png`, `mockup-kit-landing-azul.png` e `mockup-kit-capas.png`: originais em alta resolução. Ficam só neste computador.
