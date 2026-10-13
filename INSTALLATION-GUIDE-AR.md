<div dir="rtl">

# دليل تثبيت SchoolEverywhere Parent

هذا الدليل مخصص لأولياء الأمور، ولا يحتاج إلى خبرة تقنية. البرنامج يعمل محلياً على جهازك، ويحفظ بيانات تسجيل الدخول وملفات الطالب على جهازك فقط.

> **مهم:** البرنامج للقراءة فقط. لا يرسل الواجبات، ولا يرسل رسائل، ولا يغيّر الحضور، ولا يحذف أي محتوى من نظام المدرسة.

## اختر نوع جهازك

- إذا كان جهازك **Mac**، انتقل إلى [تثبيت البرنامج على macOS](#تثبيت-البرنامج-على-macos).
- إذا كان جهازك **Windows**، انتقل إلى [تثبيت البرنامج على Windows](#تثبيت-البرنامج-على-windows).
- صفحة آخر إصدار متاحة هنا: [Latest Release](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/latest).

---

## تثبيت البرنامج على macOS

### الطريقة الموصى بها: Mac Helper

هذه الطريقة تقوم بتنزيل النسخة الصحيحة، وفحص الملف، ثم تثبيت البرنامج داخل مجلد `Applications` الخاص بحسابك.

### الخطوة 1: تنزيل ملف Mac Helper

اضغط الرابط التالي:

**[Download Mac Helper](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/download/v1.2.6/SchoolEverywhere-Parent-Mac-Helper.zip)**

سيتم تنزيل ملف باسم:

<div dir="ltr">

`SchoolEverywhere-Parent-Mac-Helper.zip`

</div>

> 📷 **مكان Screenshot 1 — Mac:** صورة توضح ملف `SchoolEverywhere-Parent-Mac-Helper.zip` داخل مجلد `Downloads`.

### الخطوة 2: فك ضغط الملف

1. افتح مجلد `Downloads`.
2. اضغط مرتين على ملف `SchoolEverywhere-Parent-Mac-Helper.zip`.
3. سيظهر ملف باسم `Install-SchoolEverywhere-Mac.sh`.

> 📷 **مكان Screenshot 2 — Mac:** صورة توضح ملف `Install-SchoolEverywhere-Mac.sh` بعد فك الضغط.

### الخطوة 3: فتح Terminal

1. اضغط `Command + Space` لفتح `Spotlight`.
2. اكتب `Terminal`.
3. اضغط `Return` لفتح التطبيق.

> 📷 **مكان Screenshot 3 — Mac:** صورة لنتيجة البحث عن `Terminal` في `Spotlight`.

### الخطوة 4: تشغيل ملف التثبيت

1. داخل نافذة `Terminal`، اكتب الكلمة التالية ثم اترك مسافة بعدها:

<div dir="ltr">

```bash
bash
```

</div>

2. اسحب ملف `Install-SchoolEverywhere-Mac.sh` من مجلد `Downloads` وأفلته داخل نافذة `Terminal`.
3. سيظهر مسار الملف بعد كلمة `bash`.
4. اضغط `Return`.

يجب أن يبدو السطر قريباً من المثال التالي، لكن اسم المستخدم على جهازك سيكون مختلفاً:

<div dir="ltr">

```bash
bash /Users/your-name/Downloads/Install-SchoolEverywhere-Mac.sh
```

</div>

> 📷 **مكان Screenshot 4 — Mac:** صورة لنافذة `Terminal` بعد سحب ملف `.sh` وقبل الضغط على `Return`.

### الخطوة 5: انتظار اكتمال التثبيت

سيقوم الـ `Helper` بالآتي تلقائياً:

1. تنزيل تطبيق SchoolEverywhere Parent.
2. فحص `SHA-256 checksum` للتأكد أن الملف لم يتغير.
3. الاحتفاظ بنسخة احتياطية من التطبيق القديم إن وُجد.
4. تثبيت التطبيق داخل `~/Applications`.
5. فتح التطبيق.

عند النجاح ستظهر عبارات قريبة من:

<div dir="ltr">

```text
Download verified.
Installed successfully.
Opening SchoolEverywhere Parent...
```

</div>

> 📷 **مكان Screenshot 5 — Mac:** صورة لرسالة `Download verified` و`Installed successfully` داخل `Terminal`.

### إذا ظهرت رسالة من macOS عن Malware

النسخة الحالية غير موقعة بـ `Apple Developer ID`، ولذلك قد يعرض macOS تحذيراً رغم أن الملف تم فحصه بواسطة الـ `Helper`.

إذا ظهرت رسالة **Apple could not verify...**:

1. اضغط `Done`، ولا تضغط `Move to Trash`.
2. افتح `System Settings`.
3. اختر `Privacy & Security`.
4. انزل إلى قسم `Security`.
5. ستجد اسم SchoolEverywhere Parent وبجواره زر `Open Anyway`.
6. اضغط `Open Anyway`.
7. وافق على رسالة التأكيد الأخيرة.

> 📷 **مكان Screenshot 6 — Mac:** رسالة `Apple could not verify...`.

> 📷 **مكان Screenshot 7 — Mac:** مكان زر `Open Anyway` داخل `Privacy & Security`.

### طريقة بديلة: تنزيل DMG مباشرة

استخدم هذه الطريقة فقط إذا لم تعمل طريقة الـ `Helper`:

1. حمّل الملف من [Download Mac DMG](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/download/v1.2.6/SchoolEverywhere-Parent-macOS.dmg).
2. افتح ملف `DMG`.
3. اسحب `SchoolEverywhere Parent` إلى اختصار `Applications`.
4. إذا ظهرت رسالة بأن التطبيق موجود بالفعل، اختر `Replace`.
5. افتح البرنامج من `Applications`.

> 📷 **مكان Screenshot 8 — Mac:** نافذة `DMG` وتوضيح سحب التطبيق إلى `Applications`.

---

## تثبيت البرنامج على Windows

### الطريقة الموصى بها: Windows Helper

### الخطوة 1: تنزيل ملف Windows Helper

اضغط الرابط التالي:

**[Download Windows Helper](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/download/v1.2.6/SchoolEverywhere-Parent-Windows-Helper.zip)**

سيتم تنزيل ملف باسم:

<div dir="ltr">

`SchoolEverywhere-Parent-Windows-Helper.zip`

</div>

> 📷 **مكان Screenshot 1 — Windows:** صورة توضح ملف `SchoolEverywhere-Parent-Windows-Helper.zip` داخل `Downloads`.

### الخطوة 2: فك ضغط الملف

1. افتح مجلد `Downloads`.
2. اضغط بزر الفأرة الأيمن على ملف `ZIP`.
3. اختر `Extract All...`.
4. اضغط `Extract`.
5. افتح المجلد الناتج.

> 📷 **مكان Screenshot 2 — Windows:** نافذة `Extract All`.

### الخطوة 3: تشغيل Windows Helper

1. اضغط مرتين على `Install-SchoolEverywhere-Windows.bat`.
2. ستفتح نافذة أوامر واحدة.
3. سيقوم الـ `Helper` بتنزيل البرنامج وفحص `SHA-256 checksum`.
4. بعد نجاح الفحص، سيفتح برنامج التثبيت تلقائياً.

> 📷 **مكان Screenshot 3 — Windows:** ملف `Install-SchoolEverywhere-Windows.bat` داخل المجلد بعد فك الضغط.

> 📷 **مكان Screenshot 4 — Windows:** نافذة الأوامر وبها رسالة `Download verified`.

### إذا ظهرت رسالة Windows protected your PC

النسخة الحالية غير موقعة بـ `Authenticode certificate`، ولذلك قد يظهر تحذير `Microsoft Defender SmartScreen`.

1. اضغط `More info`.
2. تأكد أن اسم التطبيق هو SchoolEverywhere Parent.
3. اضغط `Run anyway`.

> 📷 **مكان Screenshot 5 — Windows:** نافذة `Windows protected your PC` قبل الضغط على `More info`.

> 📷 **مكان Screenshot 6 — Windows:** زر `Run anyway` بعد الضغط على `More info`.

### الخطوة 4: إكمال برنامج التثبيت

1. اتبع خطوات الـ `Setup`.
2. يمكنك اختيار إنشاء اختصار على `Desktop`.
3. اضغط `Install`.
4. بعد انتهاء التثبيت، اترك خيار فتح SchoolEverywhere Parent مفعلاً واضغط `Finish`.

> 📷 **مكان Screenshot 7 — Windows:** شاشة `Setup` قبل الضغط على `Install`.

### طريقة بديلة: تنزيل Windows Setup مباشرة

إذا لم يعمل الـ `Helper`، حمّل الملف مباشرة:

**[Download Windows Setup](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/download/v1.2.6/SchoolEverywhere-Parent-Windows-Setup.exe)**

يوجد أيضاً إصدار `Portable ZIP`، لكنه غير موصى به لمعظم أولياء الأمور لأن المجلد يجب أن يبقى كاملاً وفي مكان ثابت:

**[Download Windows Portable ZIP](https://github.com/a-abdelghany/schooleverywhere-parent-downloads/releases/download/v1.2.6/SchoolEverywhere-Parent-Windows.zip)**

---

## الإعداد الأول داخل البرنامج

عند فتح البرنامج لأول مرة، ستظهر شاشة الإعداد بدلاً من الـ `Dashboard`.

### 1. Account

أدخل:

- `Username`: اسم المستخدم الخاص بحساب ولي الأمر.
- `Password`: كلمة المرور.
- `User type`: اختر `Parent`.
- `School identifier`: اكتب `pae` ما لم تزودك المدرسة برمز مختلف.

اضغط `Find children from LMS` إذا أردت أن يبحث البرنامج عن أسماء الأبناء المرتبطين بالحساب.

> 📷 **مكان Screenshot 8 — Setup:** شاشة `Account` بعد إخفاء اسم المستخدم وكلمة المرور في الصورة.

### 2. School

راجع أسماء الأبناء، ثم أدخل اختيارات المدرسة كما تظهر داخل الـ `LMS`، مثل:

- `Section`
- `Academic year`
- `Language`
- `Current quarter fallback`
- `Current quarter start date`
- `School timezone`
- `School files folder`

استخدم `Save and test login` للتأكد أن البيانات صحيحة.

> **خصوصية:** لا تشارك Screenshot يحتوي على `Username` أو `Password` أو أسماء الطلاب أو أي معلومات مدرسية خاصة.

> 📷 **مكان Screenshot 9 — Setup:** شاشة `School` ببيانات تجريبية أو بعد إخفاء بيانات الطالب.

### 3. Schedule

1. فعّل `Enable scheduled updates`.
2. اختر الأيام والأوقات المناسبة.
3. الأوقات تستخدم توقيت الجهاز الحالي.
4. اضغط `Save schedule`.

لكي يعمل التحديث في موعده، يجب أن يكون الجهاز مفتوحاً، متصلاً بالإنترنت، وغير موجود في وضع `Sleep`.

> 📷 **مكان Screenshot 10 — Setup:** شاشة `Schedule` مع مثال لموعدين يومياً.

### 4. أول تحديث

بعد فتح الـ `Dashboard`:

1. اضغط `Update now`.
2. انتظر حتى ينتهي التحديث الأول؛ قد يستغرق عدة دقائق لأنه يجمع التاريخ السابق وينظم الملفات.
3. لا تغلق البرنامج أو تجعل الجهاز يدخل وضع `Sleep` أثناء التحديث الأول.

> 📷 **مكان Screenshot 11 — Dashboard:** مكان زر `Update now`.

---

## تحديث التطبيق مستقبلاً

بدءاً من الإصدار `1.2.6`:

- يفحص البرنامج وجود إصدار جديد بعد التشغيل، وبحد أقصى مرة كل 24 ساعة.
- يعرض رقم الإصدار و`Release notes`.
- لا ينزل أو يفتح أي `Installer` بدون موافقة ولي الأمر.
- يحافظ على بيانات الدخول، والجدول، وسجل الطلاب، والملفات، وحالة الواجبات المحلية.
- إذا كان جمع بيانات المدرسة يعمل، ينتظر البرنامج حتى ينتهي قبل السماح بتحديث التطبيق.

على Windows، سيفتح الـ `Installer` بعد الموافقة. على macOS، سيفتح ملف `DMG`؛ أغلق النسخة القديمة ثم اسحب النسخة الجديدة إلى `Applications` واختر `Replace`.

> 📷 **مكان Screenshot 12 — Update:** شريط وجود إصدار جديد وزر `Review and update`.

---

## أين تُحفظ البيانات؟

- إعدادات البرنامج وبيانات تسجيل الدخول المحمية بصلاحيات حساب الجهاز: `~/.school-lms`
- ملفات المدرسة والتقارير بشكل افتراضي: `Documents/SchoolEverywhere`

لا ترسل هذه المجلدات إلى أشخاص آخرين، لأنها قد تحتوي على معلومات الطالب ومواد مدرسية خاصة.

---

## حلول سريعة للمشكلات الشائعة

### ضغطت على ملف `.sh` ولم يحدث شيء

ملف `.sh` لا يُفتح بالطريقة المعتادة. افتح `Terminal`، اكتب `bash ` مع مسافة، ثم اسحب الملف إلى النافذة واضغط `Return`.

### ظهر نص يبدأ بـ `<!DOCTYPE html>` داخل Terminal

هذا يعني أنه تم حفظ صفحة GitHub بدلاً من ملف التثبيت. احذف الملف واستخدم رابط `Mac Helper ZIP` الموجود في هذا الدليل، ثم فك الضغط وشغّل الملف الناتج.

### البرنامج فتح صفحة بها Application files are missing

لا تشغّل ملف التطبيق منفرداً من داخل مجلد غير مكتمل. استخدم `Mac Helper` أو `Windows Setup` لإعادة تثبيت النسخة الكاملة.

### تظهر نوافذ أوامر كثيرة على Windows

استخدم `Windows Setup` للإصدار `1.2.6` أو أحدث، وليس نسخة قديمة أو ملفات تم نقلها منفردة. الإصدار الحالي يشغّل مهام الجمع في الخلفية بدون نوافذ متكررة.

### كيف أغلق البرنامج؟

افتح الـ `Dashboard` واضغط `Quit app`. ستتوقف التحديثات المجدولة حتى تسجيل الدخول إلى الجهاز مرة أخرى أو فتح البرنامج يدوياً.

### نسيت كلمة المرور أو تغيرت

افتح `Settings` من الـ `Dashboard`، ثم حدّث `Username` أو `Password` واستخدم `Save and test login`.

---

## قائمة Screenshots المطلوبة لإكمال الدليل

يمكن إضافة الصور لاحقاً دون تغيير النص. الصور الأكثر أهمية هي:

1. ملفات Mac Helper قبل وبعد فك الضغط.
2. أمر `bash` داخل `Terminal`.
3. رسالة نجاح Mac Helper.
4. تحذير macOS وزر `Open Anyway`.
5. ملفات Windows Helper وخيار `Extract All`.
6. رسالة نجاح Windows Helper.
7. تحذير `SmartScreen` وزر `Run anyway`.
8. شاشة `Account` ببيانات تجريبية.
9. شاشة `School` بدون معلومات طالب حقيقية.
10. شاشة `Schedule`.
11. مكان زر `Update now`.
12. إشعار تحديث التطبيق.

</div>
