# Guía de Deployment - Still Club Landing Page

## 🚀 Deployment en Vercel

### Opción 1: Deploy desde GitHub/GitLab/Bitbucket

1. **Preparar el repositorio:**
   ```bash
   cd still-club-landing
   git init
   git add .
   git commit -m "Initial commit: Still Club landing page"
   git remote add origin <tu-repositorio-url>
   git push -u origin main
   ```

2. **Conectar a Vercel:**
   - Ve a [vercel.com](https://vercel.com)
   - Inicia sesión o crea una cuenta
   - Click en "Add New Project"
   - Importa tu repositorio
   - Vercel detectará automáticamente Next.js
   - Click en "Deploy"

3. **Configuración automática:**
   - Framework: Next.js (detectado automáticamente)
   - Build Command: `npm run build`
   - Output Directory: `.next`
   - Install Command: `npm install`

### Opción 2: Deploy con Vercel CLI

1. **Instalar Vercel CLI:**
   ```bash
   npm i -g vercel
   ```

2. **Login:**
   ```bash
   vercel login
   ```

3. **Deploy:**
   ```bash
   cd still-club-landing
   vercel
   ```

4. **Deploy a producción:**
   ```bash
   vercel --prod
   ```

## 📦 Pre-Deployment Checklist

Antes de hacer deploy, asegúrate de:

- [ ] Todas las dependencias están en `package.json`
- [ ] El proyecto compila sin errores: `npm run build`
- [ ] No hay errores de TypeScript: `npm run type-check`
- [ ] No hay errores de linting: `npm run lint`
- [ ] Las variables de entorno están configuradas (si aplica)
- [ ] El archivo `.gitignore` está actualizado

## 🔧 Variables de Entorno (si necesitas)

Si necesitas variables de entorno:

1. En Vercel Dashboard:
   - Ve a tu proyecto
   - Settings → Environment Variables
   - Agrega las variables necesarias

2. O crea un archivo `.env.local` (no se commitea):
   ```
   NEXT_PUBLIC_SITE_URL=https://stillclub.com
   ```

## 🖼️ Imágenes

**Nota importante:** Las imágenes actuales son placeholders. Para producción:

1. Agrega imágenes reales en `/public/images/`:
   - `hero/hero-smoothie.webp`
   - `features/personalization.webp`
   - `features/superfoods.webp`
   - `features/experience.webp`
   - `showcase/smoothie-1.webp` a `smoothie-4.webp`

2. Optimiza las imágenes:
   - Formato: WebP
   - Tamaños recomendados:
     - Hero: 1920x1080px
     - Features: 800x600px
     - Showcase: 1200x1200px

## ✅ Post-Deployment

Después del deploy:

1. Verifica que el sitio funciona correctamente
2. Revisa el performance en Lighthouse
3. Verifica responsive design en diferentes dispositivos
4. Configura dominio personalizado (opcional):
   - Settings → Domains
   - Agrega tu dominio

## 🐛 Troubleshooting

### Build falla
- Verifica que todas las dependencias estén instaladas
- Revisa los logs de build en Vercel
- Asegúrate de que Node.js version sea compatible (18+)

### Imágenes no cargan
- Verifica que las rutas sean correctas
- Asegúrate de que las imágenes estén en `/public/images/`
- Verifica el formato (WebP recomendado)

### Estilos no se aplican
- Verifica que Tailwind esté configurado correctamente
- Revisa `tailwind.config.ts`
- Asegúrate de que `globals.css` esté importado

## 📊 Analytics (Opcional)

Para agregar analytics:

1. **Vercel Analytics:**
   ```bash
   npm install @vercel/analytics
   ```
   Luego agrega en `layout.tsx`:
   ```tsx
   import { Analytics } from '@vercel/analytics/react'
   
   // En el return:
   <Analytics />
   ```

2. **Google Analytics:**
   - Agrega el script en `layout.tsx` o usa `next/script`

## 🔄 Actualizaciones

Para actualizar el sitio:

1. Haz cambios en tu código
2. Commit y push:
   ```bash
   git add .
   git commit -m "Update: descripción de cambios"
   git push
   ```
3. Vercel desplegará automáticamente

## 📝 Notas Adicionales

- El proyecto está configurado para usar el App Router de Next.js 14
- Las animaciones usan Framer Motion (client-side)
- Los estilos usan Tailwind CSS con configuración personalizada
- El proyecto es completamente estático (no requiere backend)

