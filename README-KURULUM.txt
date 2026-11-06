DEUTSCH LERNEN B2-C1 — iPhone 11 KURULUMU
==========================================

ÖNEMLİ: E-posta/şifre girişi ve cihazlar arası eşitleme için uygulamanın HTTPS adresinde yayınlanması ve kendi ücretsiz Supabase projenin bağlanması gerekir. Bu paket hazırdır; ancak senin adına hesap/veritabanı açamam. Aşağıdaki adımlar bir kez yapılır.

1) SUPABASE HESABI VE VERİTABANI
- iPhone veya bilgisayardan https://supabase.com adresine gir, ücretsiz hesap aç ve New project oluştur.
- Proje açılınca sol menüden SQL Editor > New query seç.
- Bu klasördeki supabase-schema.sql dosyasını aç, tamamını kopyala, SQL Editor'e yapıştırıp RUN'a bas.
- Project Settings > API bölümünden Project URL ve anon/public key değerlerini kopyala.
- config.js dosyasını metin düzenleyiciyle aç.
- supabaseUrl alanındaki BURAYA_SUPABASE_PROJECT_URL yerine Project URL'yi; supabaseAnonKey alanındaki BURAYA_SUPABASE_ANON_PUBLIC_KEY yerine anon/public key'i yaz. Tırnakları koru.
- service_role veya secret key'i kesinlikle kullanma/paylaşma.

2) UYGULAMAYI HTTPS ADRESİNE YÜKLE
- https://github.com adresinde ücretsiz hesap aç/giriş yap.
- New repository ile deutsch-lernen-b2c1 adında Public repository oluştur.
- Add file > Upload files ile bu klasörün İÇİNDEKİ dosyaları (index.html, config.js, manifest.webmanifest, sw.js) ve supabase-schema.sql / README-KURULUM.txt dosyalarını yükle.
- Commit changes.
- Repository Settings > Pages > Build and deployment bölümünde Deploy from a branch seç. Branch: main, folder: /(root), Save.
- Birkaç dakika sonra https://KULLANICIADIN.github.io/deutsch-lernen-b2c1/ adresi açılır. Bu adresi sakla.

3) E-POSTA DOĞRULAMA
- Supabase Dashboard > Authentication > URL Configuration bölümünde Site URL alanına GitHub Pages adresini yaz.
- Redirect URLs listesine aynı adresi ekle.
- Authentication > Providers > Email bölümünde Email provider açık kalsın.
- Hesap oluşturunca gelen doğrulama e-postasındaki bağlantıya tıkla; ardından uygulamaya dönüp giriş yap.

4) iPHONE 11'E YÜKLE
- iPhone'da Safari'yi aç (Chrome değil).
- GitHub Pages uygulama adresini aç.
- Alttaki Paylaş simgesine bas.
- Ana Ekrana Ekle > Ekle seç.
- Ana ekranda Deutsch Lernen simgesi oluşur. Bundan sonra buradan açabilirsin.

5) KULLANIM VE EŞİTLEME
- Hesap oluştururken e-posta ve en az 8 karakterli şifre belirle.
- Her açışta aynı hesapla giriş yap. Kelime kartları, kişisel listeler, cümleler, tekrar durumu ve ilerleme learning_progress tablosuna kaydedilir.
- İlk girişte bu cihazdaki mevcut program verileri buluta aktarılır. Bulutta kayıt varsa girişte buluttaki kayıt yüklenir.
- JSON yedeği özelliği de korunmuştur.

GÜVENLİK / NOTLAR
- Bu uygulama tek kullanıcı hesabına kilitli değildir; her kayıtlı kullanıcı yalnızca kendi satırını okuyup değiştirebilir (RLS).
- Supabase anon/public anahtarı tarayıcı uygulamasında kullanılmak üzere tasarlanmıştır; güvenlik RLS politikalarıyla sağlanır. Secret/service_role key'i asla tarayıcıya koyma.
- E-posta doğrulama veya şifre sıfırlama e-postası gelmezse spam klasörünü kontrol et.
- İnternet gerekir: ilk giriş ve bulut eşitlemesi çevrimiçi yapılır. Uygulamanın daha önce açılmış bölümleri önbellekten yüklenebilir; çevrimdışı yapılan değişiklikler tekrar çevrimiçi olduğunda otomatik eşitlenmeyebilir.
