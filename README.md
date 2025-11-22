# Still Club Landing Page

Landing page premium para Still Club - Smoothies personalizados con superfoods premium.

## 🚀 Getting Started

### Prerrequisitos

- Node.js 18+ 
- npm o pnpm

### Instalación

```bash
# Instalar dependencias
npm install

# Ejecutar en desarrollo
npm run dev

# Build de producción
npm run build

# Iniciar servidor de producción
npm start
```

Abre [http://localhost:3000](http://localhost:3000) en tu navegador.

## 📁 Estructura del Proyecto

```
still-club-landing/
├── src/
│   ├── app/              # Next.js App Router
│   │   ├── layout.tsx    # Layout principal
│   │   ├── page.tsx      # Página principal
│   │   └── globals.css   # Estilos globales
│   ├── components/
│   │   ├── ui/           # Componentes base reutilizables
│   │   ├── sections/     # Secciones de la landing
│   │   └── layout/       # Componentes de layout
│   └── lib/              # Utilidades y constantes
├── public/               # Archivos estáticos
└── ...
```

## 🎨 Tecnologías

- **Next.js 14** - Framework React
- **TypeScript** - Type safety
- **Tailwind CSS** - Estilos utility-first
- **Framer Motion** - Animaciones
- **Lucide React** - Iconos

## 📦 Deploy en Vercel

1. Conecta tu repositorio a Vercel
2. Vercel detectará automáticamente Next.js
3. El deploy se hará automáticamente en cada push

O usa Vercel CLI:

```bash
npm i -g vercel
vercel
```

## 🎯 Características

- ✅ Diseño responsive (mobile-first)
- ✅ Animaciones suaves con Framer Motion
- ✅ Optimización de imágenes con Next.js Image
- ✅ SEO optimizado
- ✅ Performance optimizado

## 📝 Notas

- Las imágenes en `/public/images/` son placeholders. Reemplazar con imágenes reales.
- Los colores y estilos están definidos en `tailwind.config.ts`
- El contenido está en `src/lib/constants.ts`
